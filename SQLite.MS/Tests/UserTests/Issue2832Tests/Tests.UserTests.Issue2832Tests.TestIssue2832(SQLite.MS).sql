(700484) SELECT 
	t700484.Id = t700483.Id
FROM [DctSetpointtype(700483)] as t700483 (spt)
		LEFT JOIN (
			[VWellTree(700486)] as t700486 (t2)
				INNER JOIN [DctOu(700488)] as t700488 (tp2) ON ({t700486.ShopId?}? = {t700488.Id})
				LEFT JOIN [UacUsersDatagroup(700491)] as t700491 (cudg) ON ({t700488.Id} = {t700491.DatagroupId} AND {t700491.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(700496)] as t700496 (oudg) ON ({t700488.ParentId?}? = {t700496.DatagroupId} AND {t700496.UserId} = 150 AND {t700496.Inheritablepermission} > 0)
				INNER JOIN [Deviation(700516)] as t700516 (d) ON ({t700486.WellId?}? = {t700516.WellId})
		)  ON ({t700516.SetpointtypeId} = {t700483.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t700491.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t700496.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
