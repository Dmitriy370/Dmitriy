CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(16) NOT NULL,
    middle_name VARCHAR(16),
    last_name   VARCHAR(16) NOT NULL,
    job_title   VARCHAR(16) NOT NULL,
    phone       VARCHAR(16)
    );

CREATE TABLE organizations(
    name VARCHAR PRIMARY KEY NOT NULL,
    adress VARCHAR(1024),
    phone VARCHAR(16)
    );

CREATE TABLE clients(
    id SERIAL PRIMARY KEY,
    name VARCHAR(16) NOT NULL,
    middle_name VARCHAR(16),
    last_name VARCHAR(16) NOT NULL,
    job_title VARCHAR(16),
    phone VARCHAR(16),
    FOREIGN KEY (organization_name) REFERENCES organizations (name)
    );

CREATE TABLE documents(
    id SERIAL PRIMARY KEY,
    document_date DATE NOT NULL,
    status VARCHAR NOT NULL,
    FOREIGN KEY (id_user) REFERENCES users (id),
    FOREIGN KEY (id_client) REFERENCES clients(id)
    );

