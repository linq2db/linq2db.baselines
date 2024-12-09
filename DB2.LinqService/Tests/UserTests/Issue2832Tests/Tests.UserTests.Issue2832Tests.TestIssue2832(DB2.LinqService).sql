(185565) SELECT 
	t185565.Id = t185564.Id
FROM [DctSetpointtype(185564)] as t185564 (spt)
		LEFT JOIN (
			[VWellTree(185567)] as t185567 (t2)
				INNER JOIN [DctOu(185569)] as t185569 (tp2) ON ({t185567.ShopId?}? = {t185569.Id})
				LEFT JOIN [UacUsersDatagroup(185572)] as t185572 (cudg) ON ({t185569.Id} = {t185572.DatagroupId} AND {t185572.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(185577)] as t185577 (oudg) ON ({t185569.ParentId?}? = {t185577.DatagroupId} AND {t185577.UserId} = 150 AND {t185577.Inheritablepermission} > 0)
				INNER JOIN [Deviation(185597)] as t185597 (d) ON ({t185567.WellId?}? = {t185597.WellId})
		)  ON ({t185597.SetpointtypeId} = {t185564.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t185572.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t185577.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
