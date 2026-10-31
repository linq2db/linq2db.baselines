-- YDB Ydb
SELECT
	a_Parent.InheritanceParentId as InheritanceParentId
FROM
	InheritanceChild c_1
		LEFT JOIN InheritanceParent a_Parent ON CASE
			WHEN c_1.TypeDiscriminator = 1 THEN c_1.InheritanceParentId
			ELSE NULL
		END = a_Parent.InheritanceParentId
ORDER BY
	c_1.InheritanceChildId

