namespace manytomany;

entity Client{
    key ID: Integer;
    name: String;
    surname: String;

    girls: Association to many Orders on girls.client = $self;
}

entity Girls {
    key ID: Integer;
    name: String;
    surname: String;

    client: Association to many Orders on client.girls = $self;
}
entity Orders {
    date: Date;
    time: Time;

    key client: Association to Client; 
    key girls: Association to Girls;

}