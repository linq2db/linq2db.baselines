﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS element_services

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS element_services
(
	id                 text    NOT NULL,
	is_process_service Boolean NOT NULL,
	is_deleted         Boolean NOT NULL,

	CONSTRAINT "PK_element_services" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO element_services
(
	id,
	is_process_service,
	is_deleted
)
VALUES
('TestProcessService',True,False),
('TestElementService',False,False)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS component_categories

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS component_categories
(
	id         text    NOT NULL,
	service_id text    NOT NULL,
	is_deleted Boolean NOT NULL,

	CONSTRAINT "PK_component_categories" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO component_categories
(
	id,
	service_id,
	is_deleted
)
VALUES
('TestProcessCategory1','TestProcessService',False),
('TestProcessCategory2','TestProcessService',False),
('TestElementCategory1','TestElementService',False),
('TestElementCategory2','TestElementService',False)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS components

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS components
(
	id          text    NOT NULL,
	category_id text    NOT NULL,
	service_id  text    NOT NULL,
	is_deleted  Boolean NOT NULL,

	CONSTRAINT "PK_components" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO components
(
	id,
	category_id,
	service_id,
	is_deleted
)
VALUES
('TestProcessComponent1','TestProcessCategory1','TestProcessService',False),
('TestProcessComponent2','TestProcessCategory2','TestProcessService',False),
('TestElementComponent1','TestElementCategory1','TestElementService',False),
('TestElementComponent2','TestElementCategory2','TestElementService',False)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	component_categories
SET
	is_deleted = :is_deleted
FROM
	element_services ie,
	components cm
WHERE
	ie.id = 'TestProcessService' AND
	ie.id = component_categories.service_id AND
	component_categories.id = cm.category_id AND
	cm.is_deleted = False

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	x.is_deleted = True AND x.service_id = 'TestProcessService'

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	x.is_deleted = False AND x.service_id <> 'TestProcessService'

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS components

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS component_categories

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS element_services

