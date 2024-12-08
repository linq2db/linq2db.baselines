(205928) SELECT 
	t205928.Id = t205927.Id
FROM [DctSetpointtype(205927)] as t205927 (spt)
		LEFT JOIN (
			[VWellTree(205930)] as t205930 (t2)
				INNER JOIN [DctOu(205932)] as t205932 (tp2) ON ({t205930.ShopId?}? = {t205932.Id})
				LEFT JOIN [UacUsersDatagroup(205935)] as t205935 (cudg) ON ({t205932.Id} = {t205935.DatagroupId} AND {t205935.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205940)] as t205940 (oudg) ON ({t205932.ParentId?}? = {t205940.DatagroupId} AND {t205940.UserId} = 150 AND {t205940.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205960)] as t205960 (d) ON ({t205930.WellId?}? = {t205960.WellId})
		)  ON ({t205960.SetpointtypeId} = {t205927.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205935.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205940.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
