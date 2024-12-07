(205932) SELECT 
	t205932.Id = t205931.Id
FROM [DctSetpointtype(205931)] as t205931 (spt)
		LEFT JOIN (
			[VWellTree(205934)] as t205934 (t2)
				INNER JOIN [DctOu(205936)] as t205936 (tp2) ON ({t205934.ShopId?}? = {t205936.Id})
				LEFT JOIN [UacUsersDatagroup(205939)] as t205939 (cudg) ON ({t205936.Id} = {t205939.DatagroupId} AND {t205939.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205944)] as t205944 (oudg) ON ({t205936.ParentId?}? = {t205944.DatagroupId} AND {t205944.UserId} = 150 AND {t205944.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205964)] as t205964 (d) ON ({t205934.WellId?}? = {t205964.WellId})
		)  ON ({t205964.SetpointtypeId} = {t205931.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205939.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205944.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
