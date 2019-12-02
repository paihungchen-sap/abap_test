class z_i509301_main definition public final create public.
  public section.
    interfaces if_oo_adt_classrun.
endclass.

class z_i509301_main implementation.
  method if_oo_adt_classrun~main.
    data user_1 type ref to z_i509301_user.

    user_1 = new #( last_name = 'Chen' first_name = 'Chris' ).

    data(user_2) = new z_i509301_user( first_name = 'Janie' last_name = 'Chiang' ).

    out->write( user_1->get_name( ) ).
    out->write( user_2->get_name( ) ).

    data x type i.
    data y type i value 10.
    data result type i.

    result = user_1->do_stuff( exporting a = 5 importing b = x changing c = y ).

    out->write( 'Hello, world!' ).
    out->write( result ).
    out->write( x ).
    out->write( y ).
  endmethod.
endclass.
