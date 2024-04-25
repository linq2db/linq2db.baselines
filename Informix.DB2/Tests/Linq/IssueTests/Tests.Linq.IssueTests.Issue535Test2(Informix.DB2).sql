BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CustomerBase

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS CustomerBase
(
	Id           SERIAL         NOT NULL,
	ClientType   NChar(6)       NOT NULL,
	Name         NVarChar(255)      NULL,
	ContactEmail NVarChar(255)      NULL,
	Enabled      BOOLEAN            NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	q.Id,
	q.Name,
	q.ContactEmail,
	q.Enabled
FROM
	CustomerBase q
WHERE
	q.ClientType = 'Client' AND (q.Name LIKE '%test%' ESCAPE '~' OR q.ContactEmail LIKE '%test%' ESCAPE '~')

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CustomerBase

