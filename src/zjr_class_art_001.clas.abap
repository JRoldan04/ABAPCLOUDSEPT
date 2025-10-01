CLASS zjr_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjr_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: it_art TYPE STANDARD TABLE OF zjr_tab_art.

  it_art = VALUE #(
  ( client = sy-mandt id_art = 1 descr = 'Mini colores' desc2 = 'Un mini estuche' color = 'vario' piezas = 12 stock = 10 url = 'https://www.youtube.com/watch?v=v6x-Abw8lms&list=PLf02an--j1Bea18eawlcqrmcsTgOrvA4p&index=9' )
  ( client = sy-mandt id_art = 2 descr = 'MONTHLY PLANNER' desc2 = 'deal para planificar tus metas y proyectos' color = 'negro' piezas = 1 stock = 100 url = 'https://www.youtube.com/watch?v=tEP1S1kt7gU' )
  ( client = sy-mandt id_art = 3 descr = 'Marcadores' desc2 = 'ZEBRA MILDLINER COLORES PASTELES' color = 'varios' piezas = 5 stock = 20 url = 'https://www.betano.co/cuotas-de-partido/bayer-04-leverkusen-psv-eindhoven/72487959/?bt=13'  )
  ( client = sy-mandt id_art = 4 descr = 'Lapiz' desc2 = 'TOMBOW 2558 #HB' color = 'Negro' piezas = 1 stock = 1 url =
'https://account.hanatrial.ondemand.com/trial/#/globalaccount/c7491b92-8122-42d4-b21d-9d4e84c4ec64/subaccount/779fd7fe-492b-4cfb-8238-4763fd0a9eb1/service-instances&//detail/3f80ab73-d0a8-460c-840a-c6bd9dc904a7/?layout=TwoColumnsMidExpanded' ) ).

  INSERT zjr_tab_art FROM TABLE @it_art.
  IF sy-subrc = 0.
  OUT->write( 'Insertados' ).
  ELSE.
  out->write( 'No se insertaron' ).
  ENDIF.
  ENDMETHOD.
ENDCLASS.
