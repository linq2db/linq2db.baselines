BeforeExecute
BeginTransaction
BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	InheritanceParent

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Data Integer(4) -- Int32
SET     @Data = 1
DECLARE @Key1 Integer(4) -- Int32
SET     @Key1 = 143

UPDATE
	InheritanceParent
SET
	InheritanceParent.TypeDiscriminator = @Data
WHERE
	InheritanceParent.InheritanceParentId = @Key1 AND InheritanceParent.Name IS NULL

BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	InheritanceParent t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Data Integer(4) -- Int32
SET     @Data = 1
DECLARE @Key1 Integer(4) -- Int32
SET     @Key1 = 143

UPDATE
	InheritanceParent
SET
	InheritanceParent.TypeDiscriminator = @Data
WHERE
	InheritanceParent.InheritanceParentId = @Key1 AND InheritanceParent.Name IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	InheritanceParent t1

BeforeExecute
DisposeTransaction
