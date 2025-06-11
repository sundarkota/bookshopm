namespace Bookshopm;

entity Books
{
    key ID : UUID;
    title : String(100);
    desc : String(100);
    stock : Integer;
    price : Decimal(4,2);
    author : Association to one Authors;
    gener : Association to one Geners;
}

entity Authors
{
    key ID : UUID;
    key name : String(100) not null;
    book : Composition of one Books on book.author = $self;
}

entity Geners
{
    key ID : UUID;
    name : String(100);
    books : Composition of many Books on books.gener = $self;
}
