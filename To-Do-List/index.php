<?php
require 'bd_connect.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>To Do List</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="main-section">
            <div class="add-section">
                <form action="app/add.php" method="POST" autocomplete="off">
                    <?php if(isset($_GET['mess']) && $_GET['mess'] == 'error'){?>
                        <input type="text"
                                name="nom" 
                                style="border-color:#ff6666" 
                                placeholder="Veuillez Renseigner le Nom de la Tâche"/>
                        <button type="submit">Nom de la Tâche &nbsp; <span>&#43;</span></button>

                        <?php }else{ ?>
                        <input type="text" 
                                name="nom"  
                                placeholder="Les Tâches a Faire?"/>
                        <button type="submit">Ajouter Nouveaux Tâche &nbsp; <span>&#43;</span></button>
                    <?php } ?>
                </form>
            </div> 
            <?php
                $todo = $conn->query("SELECT*FROM todo ORDER BY id DESC");
            ?>
            <div class="show-todo-section">
                <?php if($todo->rowCount() <= 0){ ?>
                    <div class="todo-item">
                        <div class="empty">
                            <img src="img/h.png" width="30%">
                            
                        </div>
                    </div>
                <?php } ?> 

                <?php while($to_do_list = $todo->fetch(PDO::FETCH_ASSOC)) { ?>
                    <div class="todo-item">
                        <span id="<?php echo $to_do_list['id']; ?>" 
                              class="remove-to-do">x</span>
                        <?php if($to_do_list['checked']){ ?> 
                            <input type="checkbox" 
                                   class="check-box" 
                                   data-todo-id ="<?php echo $to_do_list['id']; ?>"
                                   checked/>
                            <h2 class="checked"><?php echo $to_do_list['nom'] ?></h2>
                            
                        <?php }else{ ?>
                            <input type="checkbox"
                                   data-todo-id ="<?php echo $to_do_list['id']; ?>" 
                                   class="check-box"/>
                            <h2><?php echo $to_do_list['nom'] ?></h2>
                            
                        <?php } ?>
                        <br>
                        <small>Date/Heure: <?php echo $to_do_list['date_heure'] ?></small>
                        
                    </div>
                <?php  } ?>
            </div>
        </div>
        <script src="js/jquery-3.2.1.min.js"></script>
        
        <script>
            $(document).ready(function(){
                $('.remove-to-do').click(function(){
                    const id = $(this).attr('id');
                    $.post("app/remove.php",
                        {
                            id: id
                        },
                        (data) => {
                            if(data){
                                $(this).parent().hide(600);
                            }

                        }
                    );
                });
                $(".check-box").click(function(e){
                    const id = $(this).attr('data-todo-id');
                    $.post('app/check.php',
                    {
                        id: id
                    },
                    (data)=>{
                        if(data != 'error'){
                            const h2 = $(this).next();
                            if(data === '1'){
                                h2.removeClass('checked');
                            }else{
                                h2.addClass('checked');
                            }
                        }
                    }
                    );
                });
            });
        </script>
    </body>
</html>