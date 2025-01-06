BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS element_services

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS element_services
(
	id                 text    NOT NULL,
	is_process_service Boolean NOT NULL,
	is_deleted         Boolean NOT NULL,

	CONSTRAINT "PK_element_services" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS component_categories

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS component_categories
(
	id         text    NOT NULL,
	service_id text    NOT NULL,
	is_deleted Boolean NOT NULL,

	CONSTRAINT "PK_component_categories" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Components"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Components"
(
	id          text    NOT NULL,
	category_id text    NOT NULL,
	service_id  text    NOT NULL,
	is_deleted  Boolean NOT NULL,

	CONSTRAINT "PK_Components" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Components"
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	component_categories
SET
	is_deleted = :is_deleted
FROM
	element_services ct
		INNER JOIN component_categories ctg ON ct.id = ctg.service_id
		INNER JOIN "Components" cm ON ctg.id = cm.category_id AND NOT cm.is_deleted
WHERE
	ct.id = 'TestProcessService' AND component_categories.id = ctg.id

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	x.is_deleted AND x.service_id = 'TestProcessService'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	NOT x.is_deleted AND x.service_id <> 'TestProcessService'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Components"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS component_categories

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS element_services

