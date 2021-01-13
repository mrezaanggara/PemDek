inventory( item(vivobook_a442u, asus, date(7, may, 2015), good),
    	item(rog_gl455ux, asus, date(9, may, 2010), good)).

inventory( item(mouse_g102, logitech, date(7, may, 2011), good),
    item(keyboard_g610, logitech, date(9, may, 2013), broken)).

inventory( item(iphone_12plus, apple, date(7, may, 2020), new),
    item(macbook_air2020, apple, date(9, may, 2020), good)).

inventory( item(gtx1030, galax, date(7, may, 2016), broken),
    item(rx3300, galax, date(9, may, 2017), good)).



first(X) :- inventory(X,_).
second(X) :- inventory(_,X).

exists(Items) :- first(Items); second(Items).

datebuy(item(_,_,Date,_),Date).
status(item(_,_,_,Status),Status).


%exists( item(Code,Product, date(_,_, Year),good)), Year > 2010
%exists( item(Code,Product, date(_,_, Year),Status)), Year > 2010, Status \= broken
%exists( item(Code,Product,_,Status)), Status == good
%inventory( item(_,_,_,Status), item(_,_,_,Status)), Status == good.
%
%
%