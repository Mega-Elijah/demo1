import ballerina/grpc;

listener grpc:Listener ep = new (9090);

@grpc:Descriptor {value: LIBRARY_DESC}
service "LibraryService" on ep {

    remote function addBook(Book value) returns BookResponse|error {
    }
    remote function updateBook(Book value) returns BookResponse|error {
    }
    remote function removeBook(Book value) returns RemoveBookResponse|error {
    }
    remote function locateBook(BookSearchRequest value) returns BookLocationResponse|error {
    }
    remote function borrowBook(BorrowRequest value) returns BorrowResponse|error {
    }
    remote function createUsers(stream<User, grpc:Error?> clientStream) returns UserResponse|error {
    }
    remote function listAvailableBooks(Empty value) returns stream<Book, error?>|error {
    }
}

