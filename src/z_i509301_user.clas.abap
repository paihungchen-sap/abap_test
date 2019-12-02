class z_i509301_user definition public final create public.
  public section.
    methods constructor
      importing
        first_name type string
        last_name type string.

    methods get_name
      returning value(r_name) type string.

    methods do_stuff
      importing
        a type i
      exporting
        b type i
      changing
        c type i
      returning
        value(r) type i.

  private section.
    data first_name type string.
    data last_name type string.
endclass.

class z_i509301_user implementation.
  method constructor.
    me->first_name = first_name.
    me->last_name = last_name.
  endmethod.

  method get_name.
    r_name = me->first_name && ` ` && me->last_name.
  endmethod.

  method do_stuff.
    b = a * a.
    c = c * c * c.
    r = a * c.
  endmethod.
endclass.
