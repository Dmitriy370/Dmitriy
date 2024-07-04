CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    middle_name TEXT,
    last_name   TEXT NOT NULL,
    job_title   VARCHAR(16) NOT NULL,
    phone       VARCHAR(16)
    );

CREATE TABLE organizations(
    name VARCHAR(16) PRIMARY KEY NOT NULL,
    adress VARCHAR(1024),
    phone VARCHAR(16)
    );

CREATE TABLE clients(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    middle_name TEXT,
    last_name TEXT NOT NULL,
    job_title VARCHAR(16),
    phone VARCHAR(16),
    FOREIGN KEY (organization_name) REFERENCES organizations (name)
    );

CREATE TABLE documents(
    id SERIAL PRIMARY KEY,
    name TEXT,
    document_date DATE NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES users (id),
    FOREIGN KEY (id_client) REFERENCES clients(id)
    );

