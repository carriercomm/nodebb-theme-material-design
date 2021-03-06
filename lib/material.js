$(document).ready(function() {

    /*
    * Layout
    */
    (function(){
       //Get saved layout type from LocalStorage
       var layoutStatus = localStorage.getItem('ma-layout-status');
       if (layoutStatus == 1) {
           $('body').addClass('sw-toggled');
           $('#tw-switch').prop('checked', true);
       }
       
       $('body').on('change', '#toggle-width input:checkbox', function(){
           if ($(this).is(':checked')) {
           $('body').addClass('toggled sw-toggled');
           localStorage.setItem('ma-layout-status', 1);
           }
           else {
           $('body').removeClass('toggled sw-toggled');
           localStorage.setItem('ma-layout-status', 0);
           }
       });
    })();

    if($('#chat-menu-trigger')[0]) {
        $('body').on('click', '#chat-menu-trigger', function(e){            
            e.preventDefault();
            $(this).toggleClass('open');
            $('.chat-menu').toggleClass('toggled');
        });
    }

    /*
     * Sidebar
     */
    (function(){
        //Toggle
        $('body').on('click', '#menu-trigger', function(e){            
            e.preventDefault();
            var x = $(this).data('trigger');
        
            $(x).toggleClass('toggled');
            $(this).toggleClass('open');

            
            if (x == '#sidebar') {
                $elem = '#sidebar';
                $elem2 = '#menu-trigger';
                
                if (!$('#chat').hasClass('toggled')) {
                    $('#header').toggleClass('sidebar-toggled');
                }
            }
            
            //When clicking outside
            if ($('#header').hasClass('sidebar-toggled')) {
                $(document).on('click', function (e) {
                    if (($(e.target).closest($elem).length === 0) && ($(e.target).closest($elem2).length === 0)) {
                        setTimeout(function(){
                            $($elem).removeClass('toggled');
                            $('#header').removeClass('sidebar-toggled');
                            $($elem2).removeClass('open');
                        });
                    }
                });
            }
        })
        
    })();


    $(window).on('action:ajaxify.end', function() {

        /*
         * Waves Animation
         */
        (function(){
            var wavesList = ['.btn'];

            for(var x = 0; x < wavesList.length; x++) {
                if($(wavesList[x])[0]) {
                    if($(wavesList[x]).is('a')) {
                        $(wavesList[x]).not('.btn-icon, input').addClass('waves-effect waves-button');
                    }
                    else {
                        $(wavesList[x]).not('.btn-icon, input').addClass('waves-effect');
                    }
                }
            }

            setTimeout(function(){
                if ($('.waves-effect')[0]) {
                   Waves.displayEffect();
                }
            });
        })();

        /*
         * Text Feild
         */
        
        //Add blue animated border and remove with condition when focus and blur
        if($('.fg-line')[0]) {
            $('body').on('focus', '.form-control', function(){
                $(this).closest('.fg-line').addClass('fg-toggled');
            })

            $('body').on('blur', '.form-control', function(){
                var p = $(this).closest('.form-group, .input-group');
                var i = p.find('.form-control').val();
                
                if (p.hasClass('fg-float')) {
                    if (i.length == 0) {
                        $(this).closest('.fg-line').removeClass('fg-toggled');
                    }
                }
                else {
                    $(this).closest('.fg-line').removeClass('fg-toggled');
                }
            });
        }

        //Add blue border for pre-valued fg-flot text feilds
        if($('.fg-float')[0]) {
            $('.fg-float .form-control').each(function(){
                var i = $(this).val();
                
                if (!i.length == 0) {
                    $(this).closest('.fg-line').addClass('fg-toggled');
                }
                
            });
        }

    });


    $(window).on('action:ajaxify.start', function() {
        if ($('#menu-trigger').hasClass('open')) {
            $('#menu-trigger').click();
        }

        if ($('.chats.dropdown').hasClass('open')) {
            $('.chats.dropdown').click();
        }

        if ($('.notifications.dropdown').hasClass('open')) {
            $('.notifications.dropdown').click();
        }
    });

    $('body').on('click', '#chat-list>li', function(e){
        if ($('.chats.dropdown').hasClass('open')) {
            $('.chats.dropdown').click();
        }
    });

    $('body').on('click', '#user-control-list>li', function(e){
        if ($('#user_label').hasClass('open')) {
            $('#user_label').click();
        }
    });

});