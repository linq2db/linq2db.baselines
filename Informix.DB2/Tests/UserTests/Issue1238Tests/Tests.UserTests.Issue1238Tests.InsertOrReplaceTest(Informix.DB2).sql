-- Informix.DB2 Informix

DELETE FROM
	InheritanceParent

-- Informix.DB2 Informix
DECLARE @Data Integer(4) -- Int32
SET     @Data = 1
DECLARE @Key1 Integer(4) -- Int32
SET     @Key1 = 143

UPDATE
	InheritanceParent t1
SET
	TypeDiscriminator = @Data
WHERE
	t1.InheritanceParentId = @Key1 AND t1.Name IS NULL

-- Informix.DB2 Informix
DECLARE @Key1 Integer(4) -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data Integer(4) -- Int32
SET     @Data = 1

INSERT INTO InheritanceParent
(
	InheritanceParentId,
	Name,
	TypeDiscriminator
)
VALUES
(
	@Key1,
	@Key2,
	@Data
)

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	InheritanceParent t1

-- Informix.DB2 Informix
DECLARE @Data Integer(4) -- Int32
SET     @Data = 1
DECLARE @Key1 Integer(4) -- Int32
SET     @Key1 = 143

UPDATE
	InheritanceParent t1
SET
	TypeDiscriminator = @Data
WHERE
	t1.InheritanceParentId = @Key1 AND t1.Name IS NULL

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	InheritanceParent t1

