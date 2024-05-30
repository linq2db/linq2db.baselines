BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Parent
(
	ParentID
)
VALUES
(
	1001
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(
	1001,
	1,
	1
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(
	1001,
	1,
	2
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(
	1001,
	1,
	3
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1001,
	2
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(
	1001,
	2,
	1
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(
	1001,
	2,
	2
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(
	1001,
	2,
	3
)

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	GrandChild
WHERE
	EXISTS(
		SELECT
			a_Children.ParentID
		FROM
			Parent p
				INNER JOIN Child a_Children ON p.ParentID = a_Children.ParentID
				INNER JOIN GrandChild a_GrandChildren ON a_Children.ParentID = a_GrandChildren.ParentID AND a_Children.ChildID = a_GrandChildren.ChildID
		WHERE
			p.ParentID >= 1000 AND
			GrandChild.ParentID = a_GrandChildren.ParentID AND
			GrandChild.ChildID = a_GrandChildren.ChildID AND
			GrandChild.GrandChildID = a_GrandChildren.GrandChildID
	)

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	EXISTS(
		SELECT
			a_Children.ParentID
		FROM
			Parent p
				INNER JOIN Child a_Children ON p.ParentID = a_Children.ParentID
		WHERE
			p.ParentID >= 1000 AND Child.ParentID = a_Children.ParentID AND
			Child.ChildID = a_Children.ChildID
	)

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	GrandChild
WHERE
	GrandChild.ParentID >= 1000

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	Child.ParentID >= 1000

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID >= 1000

