BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1189Customer
(
	ID   Int           NOT NULL,
	NAME NVarChar(255) NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	k_1.ID,
	k_1.NAME,
	TO_DATE('2020-02-29 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')
FROM
	Issue1189Customer k_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1189Customer

