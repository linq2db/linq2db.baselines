BeforeExecute
-- Informix.DB2 Informix

SELECT
	(
		SELECT
			Sum(ch.ChildID)
		FROM
			Child ch
		WHERE
			ch_4.ParentID = ch.ParentID AND ch.ChildID > 30 AND ch.ChildID > 30
	),
	(
		SELECT
			Min(ch_1.ChildID)
		FROM
			Child ch_1
		WHERE
			ch_4.ParentID = ch_1.ParentID AND ch_1.ChildID > 30 AND ch_1.ChildID > 30
	),
	(
		SELECT
			Max(ch_2.ChildID)
		FROM
			Child ch_2
		WHERE
			ch_4.ParentID = ch_2.ParentID AND ch_2.ChildID > 30 AND ch_2.ChildID > 30
	),
	(
		SELECT
			Avg(ch_3.ChildID)
		FROM
			Child ch_3
		WHERE
			ch_4.ParentID = ch_3.ParentID AND ch_3.ChildID > 30 AND ch_3.ChildID > 30
	)
FROM
	Child ch_4
WHERE
	ch_4.ChildID > 30
GROUP BY
	ch_4.ParentID

