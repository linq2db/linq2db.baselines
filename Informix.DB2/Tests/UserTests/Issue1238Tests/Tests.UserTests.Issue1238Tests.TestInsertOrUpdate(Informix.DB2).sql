BeforeExecute
BeginTransaction
BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	InheritanceParent

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	InheritanceParent t1
SET
	TypeDiscriminator = 1
WHERE
	t1.InheritanceParentId = 143 AND t1.Name IS NULL

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
	COUNT(*)
FROM
	InheritanceParent t1

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	InheritanceParent t1
SET
	TypeDiscriminator = 1
WHERE
	t1.InheritanceParentId = 143 AND t1.Name IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	InheritanceParent t1

BeforeExecute
DisposeTransaction
