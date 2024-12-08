(318389) SELECT 
	t318389.Id = t318388.Id
FROM [DctSetpointtype(318388)] as t318388 (spt)
		LEFT JOIN (
			[VWellTree(318391)] as t318391 (t2)
				INNER JOIN [DctOu(318393)] as t318393 (tp2) ON ({t318391.ShopId?}? = {t318393.Id})
				LEFT JOIN [UacUsersDatagroup(318396)] as t318396 (cudg) ON ({t318393.Id} = {t318396.DatagroupId} AND {t318396.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318401)] as t318401 (oudg) ON ({t318393.ParentId?}? = {t318401.DatagroupId} AND {t318401.UserId} = 150 AND {t318401.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318421)] as t318421 (d) ON ({t318391.WellId?}? = {t318421.WellId})
		)  ON ({t318421.SetpointtypeId} = {t318388.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318396.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318401.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
