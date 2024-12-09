(318427) SELECT 
	t318427.Id = t318426.Id
FROM [DctSetpointtype(318426)] as t318426 (spt)
		LEFT JOIN (
			[VWellTree(318429)] as t318429 (t2)
				INNER JOIN [DctOu(318431)] as t318431 (tp2) ON ({t318429.ShopId?}? = {t318431.Id})
				LEFT JOIN [UacUsersDatagroup(318434)] as t318434 (cudg) ON ({t318431.Id} = {t318434.DatagroupId} AND {t318434.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318439)] as t318439 (oudg) ON ({t318431.ParentId?}? = {t318439.DatagroupId} AND {t318439.UserId} = 150 AND {t318439.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318459)] as t318459 (d) ON ({t318429.WellId?}? = {t318459.WellId})
		)  ON ({t318459.SetpointtypeId} = {t318426.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318434.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318439.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
