BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	InheritanceParent

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	InheritanceParent
SET
	InheritanceParent.TypeDiscriminator = 1
WHERE
	InheritanceParent.InheritanceParentId = 143 AND InheritanceParent.Name IS NULL

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO InheritanceParent
(
	InheritanceParentId,
	Name,
	TypeDiscriminator
)
VALUES
(
	143,
	NULL,
	1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	InheritanceParent t1

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	InheritanceParent
SET
	InheritanceParent.TypeDiscriminator = 1
WHERE
	InheritanceParent.InheritanceParentId = 143 AND InheritanceParent.Name IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	InheritanceParent t1

