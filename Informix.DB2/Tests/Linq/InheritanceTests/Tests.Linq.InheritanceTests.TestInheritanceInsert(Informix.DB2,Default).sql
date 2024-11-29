BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS InheritanceFilter

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS InheritanceFilter
(
	Id                Int NOT NULL,
	Code              Int NOT NULL,
	Child1Field       Int     NULL,
	Child2Field       Int     NULL,
	Grandchild11Field Int     NULL,
	Grandchild12Field Int     NULL,
	Grandchild21Field Int     NULL,
	Grandchild22Field Int     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
INSERT BULK InheritanceFilter

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Code,
	t1.Id,
	t1.Child1Field,
	t1.Child2Field,
	t1.Grandchild11Field,
	t1.Grandchild12Field,
	t1.Grandchild21Field,
	t1.Grandchild22Field
FROM
	InheritanceFilter t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS InheritanceFilter

