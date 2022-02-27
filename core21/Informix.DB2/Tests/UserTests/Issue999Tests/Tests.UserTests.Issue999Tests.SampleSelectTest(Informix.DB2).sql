BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE "User"
(
	city      NVarChar(255)     NULL,
	user_name NVarChar(255)     NULL,
	street    NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	u.city
FROM
	"User" u

BeforeExecute
-- Informix.DB2 Informix

SELECT
	u.street
FROM
	"User" u

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE "User"

