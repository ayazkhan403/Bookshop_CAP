namespace my.bookshop;
using { cuid, managed } from '@sap/cds/common';

entity Books:managed  {
  key Id : Integer;
  author:Association to one Authors;
  description: localized String;
  title  : localized String;
  stock  : Integer;
}

annotate Books with {
        author @title : '{i18n>author}';
        description @title : '{i18n>description}';
        title @title : '{i18n>title}';
        stock @title : '{i18n>stock}';
    }

entity Authors :managed{
  Key Id : Integer;
  name : String;
  books :Association to many Books on books.author = $self;
}

annotate Authors with {
        name @title : '{i18n>name}';
        books @title : '{i18n>books}';
}
