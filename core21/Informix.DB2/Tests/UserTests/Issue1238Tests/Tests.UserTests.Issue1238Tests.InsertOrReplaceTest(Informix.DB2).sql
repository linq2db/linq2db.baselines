BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	InheritanceParent

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Data_1 Integer(4) -- Int32
SET     @Data_1 = 1
DECLARE @Key1 Integer(4) -- Int32
SET     @Key1 = 143

UPDATE
	InheritanceParent
SET
	InheritanceParent.TypeDiscriminator = @Data_1
WHERE
	InheritanceParent.InheritanceParentId = @Key1 AND InheritanceParent.Name IS NULL

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Key1 Integer(4) -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Integer(4) -- Int32
SET     @Data_1 = 1

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
	@Data_1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	InheritanceParent t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Data_1 Integer(4) -- Int32
SET     @Data_1 = 1
DECLARE @Key1 Integer(4) -- Int32
SET     @Key1 = 143

UPDATE
	InheritanceParent
SET
	InheritanceParent.TypeDiscriminator = @Data_1
WHERE
	InheritanceParent.InheritanceParentId = @Key1 AND InheritanceParent.Name IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	InheritanceParent t1

