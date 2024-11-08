BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4192TableNotNullable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4192TableNotNullable
(
	Name     NVarChar(255)     NULL,
	ParentId Int           NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @parentId Integer(4) -- Int32
SET     @parentId = 12

SELECT
	i.Name,
	i.ParentId
FROM
	Issue4192TableNotNullable i
WHERE
	i.ParentId = @parentId

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4192TableNotNullable

