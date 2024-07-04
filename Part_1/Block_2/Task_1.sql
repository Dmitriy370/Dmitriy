    INSERT INTO users (name, middle_name, last_name, job_title, phone)
    VALUES ('Sergey', 'Sergeevich', 'Sergeev', 'team-lead', '11-11'),
    VALUES ('Ivan', 'Ivanovich', 'Ivanov', 'manager', '11-12'),
    VALUES ('Pavel', 'Pavlovich', 'Pavlov', 'manager', '11-13');

    INSERT INTO organizations (name, adress, phone)
    VALUES ('Top-Academy', 'г. Тула, центральный переулок 18, кластер Октава, 4 этаж', '84872573787'),
    VALUES ('Fractal Form', 'г. Тула, ул. Кирова, д.135, пом.48', '89539717800');
    VALUES ('ZAVOD', 'ZAVODSKAYA STREET', '88888888888');

    INSERT INTO clients (name, middle_name, last_name, job_title, phone, organization_name)
    VALUES ('Sergey', 'Sergeevich', 'Sergeev', 'CEO', '555-555', 'Top-Academy'),
    VALUES ('Ivan', 'Ivanovich', 'Ivanov', 'manager', '777-777', 'Fractal Form');

    INSERT INTO documents(name, document_date, status, id_user, id_client)
    VALUES ('Zapros', 02.07.2024, 'create', 1,1);
