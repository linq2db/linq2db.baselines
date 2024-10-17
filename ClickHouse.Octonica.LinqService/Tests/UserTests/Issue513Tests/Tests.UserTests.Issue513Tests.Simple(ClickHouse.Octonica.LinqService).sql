BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN t1.TypeDiscriminator = 2 THEN true
		ELSE false
	END,
	t1.InheritanceParentId,
	t1.TypeDiscriminator,
	t1.Name,
	CASE
		WHEN t1.TypeDiscriminator = 1 THEN true
		ELSE false
	END
FROM
	InheritanceParent t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN t1.TypeDiscriminator = 2 THEN true
		ELSE false
	END,
	t1.InheritanceChildId,
	t1.TypeDiscriminator,
	t1.InheritanceParentId,
	t1.Name,
	CASE
		WHEN t1.TypeDiscriminator = 1 THEN true
		ELSE false
	END
FROM
	InheritanceChild t1

