using { Bookshopm as my } from '../db/schema.cds';

@path : '/service/BookshopmService'
service BookshopmService
{
    @odata.draft.enabled
    entity Books as
        projection on my.Books;

    action SubmitOrder
    (
        amount : Integer,
        book_id : UUID
    );
}

annotate BookshopmService with @requires :
[
    'authenticated-user'
];
