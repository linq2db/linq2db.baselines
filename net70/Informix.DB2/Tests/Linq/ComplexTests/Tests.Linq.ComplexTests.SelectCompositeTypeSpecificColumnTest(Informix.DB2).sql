BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "User"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "User"
(
	city            NVarChar(255)     NULL,
	user_name       NVarChar(255)     NULL,
	street          NVarChar(255)     NULL,
	building_number Int           NOT NULL
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

DROP TABLE IF EXISTS "User"

