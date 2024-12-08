(492079) SELECT 
	t492079.Id = t492078.Id
FROM [DctSetpointtype(492078)] as t492078 (spt)
		LEFT JOIN (
			[VWellTree(492081)] as t492081 (t2)
				INNER JOIN [DctOu(492083)] as t492083 (tp2) ON ({t492081.ShopId?}? = {t492083.Id})
				LEFT JOIN [UacUsersDatagroup(492086)] as t492086 (cudg) ON ({t492083.Id} = {t492086.DatagroupId} AND {t492086.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(492091)] as t492091 (oudg) ON ({t492083.ParentId?}? = {t492091.DatagroupId} AND {t492091.UserId} = 150 AND {t492091.Inheritablepermission} > 0)
				INNER JOIN [Deviation(492111)] as t492111 (d) ON ({t492081.WellId?}? = {t492111.WellId})
		)  ON ({t492111.SetpointtypeId} = {t492078.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t492086.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t492091.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
