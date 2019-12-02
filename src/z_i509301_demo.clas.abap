class z_i509301_demo definition public final create public.
    public section.
        data first_name type string value 'Chris'.
        data last_name type string value 'Chen'.
        class-data console type ref to if_oo_adt_classrun_out.

        interfaces if_oo_adt_classrun.
        interfaces z_i509301_if_foo.
        interfaces z_i509301_if_bar.

        methods get_name returning value(r_name) type string.
        methods speak.

        class-methods get_stats
            importing
                foo type ref to z_i509301_if_foo
                bar type ref to z_i509301_if_bar.
endclass.

class z_i509301_demo implementation.
    method if_oo_adt_classrun~main.
        z_i509301_demo=>console = out.

*        data x type i value 3.
*
*        if x ne 3.
*            out->write( 'Yes!' ).
*        else.
*            out->write( 'No!' ).
*        endif.

        data count type i value 5.

        out->write( 'Yes!' ).

        do count times.
            out->write( `===> ` && '!' ).
        enddo.

        " data(ninja) = new z_i509301_demo( ).

        " ninja->speak( ).

        " z_i509301_demo=>get_stats( exporting foo = ninja bar = ninja ).
    endmethod.

    method z_i509301_if_foo~calculate.
        result = a + b.
    endmethod.

    method z_i509301_if_bar~calculate.
        result = a - b.
    endmethod.

    method get_name.
        r_name = me->first_name && ` ` && me->last_name.
    endmethod.

    method speak.
        z_i509301_demo=>console->write( `I am a ninja. My name is ` && me->get_name( ) && '.' ).
    endmethod.

    method get_stats.
        console->write( `Foo: ` && foo->calculate( exporting a = 1 b = 2 ) ).
        console->write( `Bar: ` && bar->calculate( exporting a = 1 b = 2 ) ).
    endmethod.
endclass.
