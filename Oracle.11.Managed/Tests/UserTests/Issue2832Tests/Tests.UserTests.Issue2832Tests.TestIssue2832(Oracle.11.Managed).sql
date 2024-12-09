(194923) SELECT 
	t194923.Id = t194922.Id
FROM [DctSetpointtype(194922)] as t194922 (spt)
		LEFT JOIN (
			[VWellTree(194925)] as t194925 (t2)
				INNER JOIN [DctOu(194927)] as t194927 (tp2) ON ({t194925.ShopId?}? = {t194927.Id})
				LEFT JOIN [UacUsersDatagroup(194930)] as t194930 (cudg) ON ({t194927.Id} = {t194930.DatagroupId} AND {t194930.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(194935)] as t194935 (oudg) ON ({t194927.ParentId?}? = {t194935.DatagroupId} AND {t194935.UserId} = 150 AND {t194935.Inheritablepermission} > 0)
				INNER JOIN [Deviation(194955)] as t194955 (d) ON ({t194925.WellId?}? = {t194955.WellId})
		)  ON ({t194955.SetpointtypeId} = {t194922.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t194930.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t194935.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
