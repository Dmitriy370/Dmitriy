CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR ,
    middle_name VARCHAR,
    last_name   VARCHAR,
    job_title   VARCHAR,
    phone       VARCHAR
    );

CREATE TABLE organizations(
    name VARCHAR PRIMARY KEY,
    adress VARCHAR,
    phone VARCHAR
    );

CREATE TABLE clients(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    middle_name VARCHAR,
    last_name VARCHAR,
    job_title VARCHAR,
    phone VARCHAR,
    FOREIGN KEY (organization_name) REFERENCES organizations (name)
    );

CREATE TABLE documents(
    id SERIAL PRIMARY KEY,
    document_date DATE,
    status VARCHAR,
    FOREIGN KEY (id_user) REFERENCES users (id),
    FOREIGN KEY (id_client) REFERENCES clients(id)
    );

