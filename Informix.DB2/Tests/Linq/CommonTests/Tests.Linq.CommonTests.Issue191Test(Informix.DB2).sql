BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "User"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "User"
(
	FirstName NVarChar(255)     NULL,
	Status    Int               NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	user_1.FirstName,
	user_1.Status
FROM
	"User" user_1
WHERE
	user_1.Status IS NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "User"

