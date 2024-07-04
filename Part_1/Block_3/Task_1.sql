SELECT 
	clients.name,
	clients.last_name,
	organization.name,
	clients.job_title,
	organization.adress,
	clients.phone
FROM
	clients
LEFT JOIN organization
ON clients.organization_name = organization.name;

SELECT
    documents.name,
    documents.document_date,
    users.name,
    users.last_name,
    clients.name,
    clients.last_name,
    documents.status
FROM
    documents
LEFT JOIN users
ON documents.id_user = users.id
LEFT JOIN clients
ON documents.id_client = clients.id;

