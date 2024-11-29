BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN t1.TypeDiscriminator = 2 THEN 't'
		ELSE 'f'
	END::BOOLEAN,
	t1.InheritanceParentId,
	t1.TypeDiscriminator,
	t1.Name,
	CASE
		WHEN t1.TypeDiscriminator = 1 THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	InheritanceParent t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN t1.TypeDiscriminator = 2 THEN 't'
		ELSE 'f'
	END::BOOLEAN,
	t1.InheritanceChildId,
	t1.TypeDiscriminator,
	t1.InheritanceParentId,
	t1.Name,
	CASE
		WHEN t1.TypeDiscriminator = 1 THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	InheritanceChild t1

