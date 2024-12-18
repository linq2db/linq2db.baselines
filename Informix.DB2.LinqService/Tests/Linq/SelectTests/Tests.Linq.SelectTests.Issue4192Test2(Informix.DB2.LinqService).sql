BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4192TableNullable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4192TableNullable
(
	Name     NVarChar(255)     NULL,
	ParentId Int               NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @parentId Integer(4) -- Int32
SET     @parentId = 12

SELECT
	i.Name,
	i.ParentId
FROM
	Issue4192TableNullable i
WHERE
	i.ParentId = @parentId AND i.ParentId IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4192TableNullable

