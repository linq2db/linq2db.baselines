BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1],
	[a_Child].[ChildID],
	[a_Child_1].[ChildID],
	[a_Child_2].[ChildID],
	[a_Child_3].[ChildID],
	[a_Child_4].[ChildID],
	[a_Child_5].[ChildID],
	[a_Child_6].[ChildID],
	[a_Child_7].[ChildID],
	[a_Child_8].[ChildID],
	[a_Child_9].[ChildID],
	[a_Child_10].[ChildID],
	[a_Child_11].[ChildID],
	[a_Child_12].[ChildID],
	[a_Child_13].[ChildID],
	[a_Child_14].[ChildID],
	[a_Child_15].[ChildID],
	[a_Child_16].[ChildID],
	[a_Child_17].[ChildID],
	[a_Child_18].[ChildID],
	[a_Child_19].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [GrandChild] [g1] ON [p].[ParentID] = [g1].[ParentID] AND [g1].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child] ON [g1].[ParentID] = [a_Child].[ParentID] AND [g1].[ParentID] IS NOT NULL AND [g1].[ChildID] = [a_Child].[ChildID] AND [g1].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g2] ON [p].[ParentID] = [g2].[ParentID] AND [g2].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_1] ON [g2].[ParentID] = [a_Child_1].[ParentID] AND [g2].[ParentID] IS NOT NULL AND [g2].[ChildID] = [a_Child_1].[ChildID] AND [g2].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g3] ON [p].[ParentID] = [g3].[ParentID] AND [g3].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_2] ON [g3].[ParentID] = [a_Child_2].[ParentID] AND [g3].[ParentID] IS NOT NULL AND [g3].[ChildID] = [a_Child_2].[ChildID] AND [g3].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g4] ON [p].[ParentID] = [g4].[ParentID] AND [g4].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_3] ON [g4].[ParentID] = [a_Child_3].[ParentID] AND [g4].[ParentID] IS NOT NULL AND [g4].[ChildID] = [a_Child_3].[ChildID] AND [g4].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g5] ON [p].[ParentID] = [g5].[ParentID] AND [g5].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_4] ON [g5].[ParentID] = [a_Child_4].[ParentID] AND [g5].[ParentID] IS NOT NULL AND [g5].[ChildID] = [a_Child_4].[ChildID] AND [g5].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g6] ON [p].[ParentID] = [g6].[ParentID] AND [g6].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_5] ON [g6].[ParentID] = [a_Child_5].[ParentID] AND [g6].[ParentID] IS NOT NULL AND [g6].[ChildID] = [a_Child_5].[ChildID] AND [g6].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g7] ON [p].[ParentID] = [g7].[ParentID] AND [g7].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_6] ON [g7].[ParentID] = [a_Child_6].[ParentID] AND [g7].[ParentID] IS NOT NULL AND [g7].[ChildID] = [a_Child_6].[ChildID] AND [g7].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g8] ON [p].[ParentID] = [g8].[ParentID] AND [g8].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_7] ON [g8].[ParentID] = [a_Child_7].[ParentID] AND [g8].[ParentID] IS NOT NULL AND [g8].[ChildID] = [a_Child_7].[ChildID] AND [g8].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g9] ON [p].[ParentID] = [g9].[ParentID] AND [g9].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_8] ON [g9].[ParentID] = [a_Child_8].[ParentID] AND [g9].[ParentID] IS NOT NULL AND [g9].[ChildID] = [a_Child_8].[ChildID] AND [g9].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g10] ON [p].[ParentID] = [g10].[ParentID] AND [g10].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_9] ON [g10].[ParentID] = [a_Child_9].[ParentID] AND [g10].[ParentID] IS NOT NULL AND [g10].[ChildID] = [a_Child_9].[ChildID] AND [g10].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g11] ON [p].[ParentID] = [g11].[ParentID] AND [g11].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_10] ON [g11].[ParentID] = [a_Child_10].[ParentID] AND [g11].[ParentID] IS NOT NULL AND [g11].[ChildID] = [a_Child_10].[ChildID] AND [g11].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g12] ON [p].[ParentID] = [g12].[ParentID] AND [g12].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_11] ON [g12].[ParentID] = [a_Child_11].[ParentID] AND [g12].[ParentID] IS NOT NULL AND [g12].[ChildID] = [a_Child_11].[ChildID] AND [g12].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g13] ON [p].[ParentID] = [g13].[ParentID] AND [g13].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_12] ON [g13].[ParentID] = [a_Child_12].[ParentID] AND [g13].[ParentID] IS NOT NULL AND [g13].[ChildID] = [a_Child_12].[ChildID] AND [g13].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g14] ON [p].[ParentID] = [g14].[ParentID] AND [g14].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_13] ON [g14].[ParentID] = [a_Child_13].[ParentID] AND [g14].[ParentID] IS NOT NULL AND [g14].[ChildID] = [a_Child_13].[ChildID] AND [g14].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g15] ON [p].[ParentID] = [g15].[ParentID] AND [g15].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_14] ON [g15].[ParentID] = [a_Child_14].[ParentID] AND [g15].[ParentID] IS NOT NULL AND [g15].[ChildID] = [a_Child_14].[ChildID] AND [g15].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g16] ON [p].[ParentID] = [g16].[ParentID] AND [g16].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_15] ON [g16].[ParentID] = [a_Child_15].[ParentID] AND [g16].[ParentID] IS NOT NULL AND [g16].[ChildID] = [a_Child_15].[ChildID] AND [g16].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g17] ON [p].[ParentID] = [g17].[ParentID] AND [g17].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_16] ON [g17].[ParentID] = [a_Child_16].[ParentID] AND [g17].[ParentID] IS NOT NULL AND [g17].[ChildID] = [a_Child_16].[ChildID] AND [g17].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g18] ON [p].[ParentID] = [g18].[ParentID] AND [g18].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_17] ON [g18].[ParentID] = [a_Child_17].[ParentID] AND [g18].[ParentID] IS NOT NULL AND [g18].[ChildID] = [a_Child_17].[ChildID] AND [g18].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g19] ON [p].[ParentID] = [g19].[ParentID] AND [g19].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_18] ON [g19].[ParentID] = [a_Child_18].[ParentID] AND [g19].[ParentID] IS NOT NULL AND [g19].[ChildID] = [a_Child_18].[ChildID] AND [g19].[ChildID] IS NOT NULL
		LEFT JOIN [GrandChild] [g20] ON [p].[ParentID] = [g20].[ParentID] AND [g20].[ParentID] IS NOT NULL
		LEFT JOIN [Child] [a_Child_19] ON [g20].[ParentID] = [a_Child_19].[ParentID] AND [g20].[ParentID] IS NOT NULL AND [g20].[ChildID] = [a_Child_19].[ChildID] AND [g20].[ChildID] IS NOT NULL
WHERE
	[a_Child].[ChildID] = 1 AND
	[a_Child].[ChildID] IS NOT NULL AND
	[a_Child_1].[ChildID] = 2 AND
	[a_Child_1].[ChildID] IS NOT NULL AND
	[a_Child_2].[ChildID] = 3 AND
	[a_Child_2].[ChildID] IS NOT NULL AND
	[a_Child_3].[ChildID] = 4 AND
	[a_Child_3].[ChildID] IS NOT NULL AND
	[a_Child_4].[ChildID] = 5 AND
	[a_Child_4].[ChildID] IS NOT NULL AND
	[a_Child_5].[ChildID] = 6 AND
	[a_Child_5].[ChildID] IS NOT NULL AND
	[a_Child_6].[ChildID] = 7 AND
	[a_Child_6].[ChildID] IS NOT NULL AND
	[a_Child_7].[ChildID] = 8 AND
	[a_Child_7].[ChildID] IS NOT NULL AND
	[a_Child_8].[ChildID] = 9 AND
	[a_Child_8].[ChildID] IS NOT NULL AND
	[a_Child_9].[ChildID] = 10 AND
	[a_Child_9].[ChildID] IS NOT NULL AND
	[a_Child_10].[ChildID] = 11 AND
	[a_Child_10].[ChildID] IS NOT NULL AND
	[a_Child_11].[ChildID] = 12 AND
	[a_Child_11].[ChildID] IS NOT NULL AND
	[a_Child_12].[ChildID] = 13 AND
	[a_Child_12].[ChildID] IS NOT NULL AND
	[a_Child_13].[ChildID] = 14 AND
	[a_Child_13].[ChildID] IS NOT NULL AND
	[a_Child_14].[ChildID] = 15 AND
	[a_Child_14].[ChildID] IS NOT NULL AND
	[a_Child_15].[ChildID] = 16 AND
	[a_Child_15].[ChildID] IS NOT NULL AND
	[a_Child_16].[ChildID] = 17 AND
	[a_Child_16].[ChildID] IS NOT NULL AND
	[a_Child_17].[ChildID] = 18 AND
	[a_Child_17].[ChildID] IS NOT NULL AND
	[a_Child_18].[ChildID] = 19 AND
	[a_Child_18].[ChildID] IS NOT NULL AND
	[a_Child_19].[ChildID] = 20 AND
	[a_Child_19].[ChildID] IS NOT NULL
ORDER BY
	[a_Child].[ChildID],
	[a_Child_1].[ChildID],
	[a_Child_2].[ChildID],
	[a_Child_3].[ChildID],
	[a_Child_4].[ChildID],
	[a_Child_5].[ChildID],
	[a_Child_6].[ChildID],
	[a_Child_7].[ChildID],
	[a_Child_8].[ChildID],
	[a_Child_9].[ChildID],
	[a_Child_10].[ChildID],
	[a_Child_11].[ChildID],
	[a_Child_12].[ChildID],
	[a_Child_13].[ChildID],
	[a_Child_14].[ChildID],
	[a_Child_15].[ChildID],
	[a_Child_16].[ChildID],
	[a_Child_17].[ChildID],
	[a_Child_18].[ChildID],
	[a_Child_19].[ChildID]

