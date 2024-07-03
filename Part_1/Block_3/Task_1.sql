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

