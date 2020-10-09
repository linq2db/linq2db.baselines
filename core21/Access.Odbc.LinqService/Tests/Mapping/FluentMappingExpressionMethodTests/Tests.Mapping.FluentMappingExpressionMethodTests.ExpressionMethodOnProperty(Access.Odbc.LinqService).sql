BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [InstanceClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 101

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 102

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 103

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 104

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 105

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 106

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 107

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 108

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 9
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 109

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 110

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 111

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 12
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 112

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 13
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 113

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 14
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 114

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 15
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 115

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 16
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 116

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 17
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 117

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 18
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 118

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 19
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 119

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 120

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[InstanceClass] [t]
WHERE
	CStr([t].[Id]) + CStr([t].[Value]) = CStr([t].[Id]) + CStr([t].[Value])

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [InstanceClass]

