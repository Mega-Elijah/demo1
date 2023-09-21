import ballerina/grpc;
import ballerina/protobuf;

public const string LIBRARY_DESC = "0A0D6C6962726172792E70726F746F12076C6962726172791A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F1A1B676F6F676C652F70726F746F6275662F656D7074792E70726F746F229A010A04426F6F6B12140A057469746C6518012001280952057469746C6512190A08617574686F725F311802200128095207617574686F723112190A08617574686F725F321803200128095207617574686F7232121A0A086C6F636174696F6E18042001280952086C6F636174696F6E12120A046973626E18052001280952046973626E12160A06737461747573180620012808520673746174757322390A045573657212170A07757365725F6964180120012809520675736572496412180A0770726F66696C65180220012809520770726F66696C6522070A05456D70747922220A0C426F6F6B526573706F6E736512120A046973626E18012001280952046973626E222D0A0C55736572526573706F6E7365121D0A0A757365725F636F756E74180120012805520975736572436F756E7422390A1252656D6F7665426F6F6B526573706F6E736512230A05626F6F6B7318012003280B320D2E6C6962726172792E426F6F6B5205626F6F6B7322270A11426F6F6B5365617263685265717565737412120A046973626E18012001280952046973626E22500A14426F6F6B4C6F636174696F6E526573706F6E7365121A0A086C6F636174696F6E18012001280952086C6F636174696F6E121C0A09617661696C61626C651802200128085209617661696C61626C65223C0A0D426F72726F775265717565737412170A07757365725F6964180120012809520675736572496412120A046973626E18022001280952046973626E22440A0E426F72726F77526573706F6E736512180A077375636365737318012001280852077375636365737312180A076D65737361676518022001280952076D65737361676532A5030A0E4C69627261727953657276696365122F0A07616464426F6F6B120D2E6C6962726172792E426F6F6B1A152E6C6962726172792E426F6F6B526573706F6E736512350A0B6372656174655573657273120D2E6C6962726172792E557365721A152E6C6962726172792E55736572526573706F6E7365280112320A0A757064617465426F6F6B120D2E6C6962726172792E426F6F6B1A152E6C6962726172792E426F6F6B526573706F6E736512380A0A72656D6F7665426F6F6B120D2E6C6962726172792E426F6F6B1A1B2E6C6962726172792E52656D6F7665426F6F6B526573706F6E736512350A126C697374417661696C61626C65426F6F6B73120E2E6C6962726172792E456D7074791A0D2E6C6962726172792E426F6F6B300112470A0A6C6F63617465426F6F6B121A2E6C6962726172792E426F6F6B536561726368526571756573741A1D2E6C6962726172792E426F6F6B4C6F636174696F6E526573706F6E7365123D0A0A626F72726F77426F6F6B12162E6C6962726172792E426F72726F77526571756573741A172E6C6962726172792E426F72726F77526573706F6E7365620670726F746F33";

public isolated client class LibraryServiceClient {
    *grpc:AbstractClientEndpoint;

    private final grpc:Client grpcClient;

    public isolated function init(string url, *grpc:ClientConfiguration config) returns grpc:Error? {
        self.grpcClient = check new (url, config);
        check self.grpcClient.initStub(self, LIBRARY_DESC);
    }

    isolated remote function addBook(Book|ContextBook req) returns BookResponse|grpc:Error {
        map<string|string[]> headers = {};
        Book message;
        if req is ContextBook {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("library.LibraryService/addBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <BookResponse>result;
    }

    isolated remote function addBookContext(Book|ContextBook req) returns ContextBookResponse|grpc:Error {
        map<string|string[]> headers = {};
        Book message;
        if req is ContextBook {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("library.LibraryService/addBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <BookResponse>result, headers: respHeaders};
    }

    isolated remote function updateBook(Book|ContextBook req) returns BookResponse|grpc:Error {
        map<string|string[]> headers = {};
        Book message;
        if req is ContextBook {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("library.LibraryService/updateBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <BookResponse>result;
    }

    isolated remote function updateBookContext(Book|ContextBook req) returns ContextBookResponse|grpc:Error {
        map<string|string[]> headers = {};
        Book message;
        if req is ContextBook {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("library.LibraryService/updateBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <BookResponse>result, headers: respHeaders};
    }

    isolated remote function removeBook(Book|ContextBook req) returns RemoveBookResponse|grpc:Error {
        map<string|string[]> headers = {};
        Book message;
        if req is ContextBook {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("library.LibraryService/removeBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <RemoveBookResponse>result;
    }

    isolated remote function removeBookContext(Book|ContextBook req) returns ContextRemoveBookResponse|grpc:Error {
        map<string|string[]> headers = {};
        Book message;
        if req is ContextBook {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("library.LibraryService/removeBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <RemoveBookResponse>result, headers: respHeaders};
    }

    isolated remote function locateBook(BookSearchRequest|ContextBookSearchRequest req) returns BookLocationResponse|grpc:Error {
        map<string|string[]> headers = {};
        BookSearchRequest message;
        if req is ContextBookSearchRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("library.LibraryService/locateBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <BookLocationResponse>result;
    }

    isolated remote function locateBookContext(BookSearchRequest|ContextBookSearchRequest req) returns ContextBookLocationResponse|grpc:Error {
        map<string|string[]> headers = {};
        BookSearchRequest message;
        if req is ContextBookSearchRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("library.LibraryService/locateBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <BookLocationResponse>result, headers: respHeaders};
    }

    isolated remote function borrowBook(BorrowRequest|ContextBorrowRequest req) returns BorrowResponse|grpc:Error {
        map<string|string[]> headers = {};
        BorrowRequest message;
        if req is ContextBorrowRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("library.LibraryService/borrowBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <BorrowResponse>result;
    }

    isolated remote function borrowBookContext(BorrowRequest|ContextBorrowRequest req) returns ContextBorrowResponse|grpc:Error {
        map<string|string[]> headers = {};
        BorrowRequest message;
        if req is ContextBorrowRequest {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("library.LibraryService/borrowBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <BorrowResponse>result, headers: respHeaders};
    }

    isolated remote function createUsers() returns CreateUsersStreamingClient|grpc:Error {
        grpc:StreamingClient sClient = check self.grpcClient->executeClientStreaming("library.LibraryService/createUsers");
        return new CreateUsersStreamingClient(sClient);
    }

    isolated remote function listAvailableBooks(Empty|ContextEmpty req) returns stream<Book, grpc:Error?>|grpc:Error {
        map<string|string[]> headers = {};
        Empty message;
        if req is ContextEmpty {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeServerStreaming("library.LibraryService/listAvailableBooks", message, headers);
        [stream<anydata, grpc:Error?>, map<string|string[]>] [result, _] = payload;
        BookStream outputStream = new BookStream(result);
        return new stream<Book, grpc:Error?>(outputStream);
    }

    isolated remote function listAvailableBooksContext(Empty|ContextEmpty req) returns ContextBookStream|grpc:Error {
        map<string|string[]> headers = {};
        Empty message;
        if req is ContextEmpty {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeServerStreaming("library.LibraryService/listAvailableBooks", message, headers);
        [stream<anydata, grpc:Error?>, map<string|string[]>] [result, respHeaders] = payload;
        BookStream outputStream = new BookStream(result);
        return {content: new stream<Book, grpc:Error?>(outputStream), headers: respHeaders};
    }
}

public client class CreateUsersStreamingClient {
    private grpc:StreamingClient sClient;

    isolated function init(grpc:StreamingClient sClient) {
        self.sClient = sClient;
    }

    isolated remote function sendUser(User message) returns grpc:Error? {
        return self.sClient->send(message);
    }

    isolated remote function sendContextUser(ContextUser message) returns grpc:Error? {
        return self.sClient->send(message);
    }

    isolated remote function receiveUserResponse() returns UserResponse|grpc:Error? {
        var response = check self.sClient->receive();
        if response is () {
            return response;
        } else {
            [anydata, map<string|string[]>] [payload, _] = response;
            return <UserResponse>payload;
        }
    }

    isolated remote function receiveContextUserResponse() returns ContextUserResponse|grpc:Error? {
        var response = check self.sClient->receive();
        if response is () {
            return response;
        } else {
            [anydata, map<string|string[]>] [payload, headers] = response;
            return {content: <UserResponse>payload, headers: headers};
        }
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.sClient->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.sClient->complete();
    }
}

public class BookStream {
    private stream<anydata, grpc:Error?> anydataStream;

    public isolated function init(stream<anydata, grpc:Error?> anydataStream) {
        self.anydataStream = anydataStream;
    }

    public isolated function next() returns record {|Book value;|}|grpc:Error? {
        var streamValue = self.anydataStream.next();
        if (streamValue is ()) {
            return streamValue;
        } else if (streamValue is grpc:Error) {
            return streamValue;
        } else {
            record {|Book value;|} nextRecord = {value: <Book>streamValue.value};
            return nextRecord;
        }
    }

    public isolated function close() returns grpc:Error? {
        return self.anydataStream.close();
    }
}

public client class LibraryServiceBookResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendBookResponse(BookResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextBookResponse(ContextBookResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class LibraryServiceBookCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendBook(Book response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextBook(ContextBook response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class LibraryServiceBookLocationResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendBookLocationResponse(BookLocationResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextBookLocationResponse(ContextBookLocationResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class LibraryServiceBorrowResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendBorrowResponse(BorrowResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextBorrowResponse(ContextBorrowResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class LibraryServiceRemoveBookResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendRemoveBookResponse(RemoveBookResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextRemoveBookResponse(ContextRemoveBookResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public client class LibraryServiceUserResponseCaller {
    private grpc:Caller caller;

    public isolated function init(grpc:Caller caller) {
        self.caller = caller;
    }

    public isolated function getId() returns int {
        return self.caller.getId();
    }

    isolated remote function sendUserResponse(UserResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendContextUserResponse(ContextUserResponse response) returns grpc:Error? {
        return self.caller->send(response);
    }

    isolated remote function sendError(grpc:Error response) returns grpc:Error? {
        return self.caller->sendError(response);
    }

    isolated remote function complete() returns grpc:Error? {
        return self.caller->complete();
    }

    public isolated function isCancelled() returns boolean {
        return self.caller.isCancelled();
    }
}

public type ContextUserStream record {|
    stream<User, error?> content;
    map<string|string[]> headers;
|};

public type ContextBookStream record {|
    stream<Book, error?> content;
    map<string|string[]> headers;
|};

public type ContextBookResponse record {|
    BookResponse content;
    map<string|string[]> headers;
|};

public type ContextUserResponse record {|
    UserResponse content;
    map<string|string[]> headers;
|};

public type ContextEmpty record {|
    Empty content;
    map<string|string[]> headers;
|};

public type ContextUser record {|
    User content;
    map<string|string[]> headers;
|};

public type ContextBorrowRequest record {|
    BorrowRequest content;
    map<string|string[]> headers;
|};

public type ContextBook record {|
    Book content;
    map<string|string[]> headers;
|};

public type ContextBookSearchRequest record {|
    BookSearchRequest content;
    map<string|string[]> headers;
|};

public type ContextRemoveBookResponse record {|
    RemoveBookResponse content;
    map<string|string[]> headers;
|};

public type ContextBookLocationResponse record {|
    BookLocationResponse content;
    map<string|string[]> headers;
|};

public type ContextBorrowResponse record {|
    BorrowResponse content;
    map<string|string[]> headers;
|};

@protobuf:Descriptor {value: LIBRARY_DESC}
public type BookResponse record {|
    string isbn = "";
|};

@protobuf:Descriptor {value: LIBRARY_DESC}
public type UserResponse record {|
    int user_count = 0;
|};

@protobuf:Descriptor {value: LIBRARY_DESC}
public type Empty record {|
|};

@protobuf:Descriptor {value: LIBRARY_DESC}
public type User record {|
    string user_id = "";
    string profile = "";
|};

@protobuf:Descriptor {value: LIBRARY_DESC}
public type BorrowRequest record {|
    string user_id = "";
    string isbn = "";
|};

@protobuf:Descriptor {value: LIBRARY_DESC}
public type Book record {|
    string title = "";
    string author_1 = "";
    string author_2 = "";
    string location = "";
    string isbn = "";
    boolean status = false;
|};

@protobuf:Descriptor {value: LIBRARY_DESC}
public type BookSearchRequest record {|
    string isbn = "";
|};

@protobuf:Descriptor {value: LIBRARY_DESC}
public type RemoveBookResponse record {|
    Book[] books = [];
|};

@protobuf:Descriptor {value: LIBRARY_DESC}
public type BookLocationResponse record {|
    string location = "";
    boolean available = false;
|};

@protobuf:Descriptor {value: LIBRARY_DESC}
public type BorrowResponse record {|
    boolean success = false;
    string message = "";
|};

