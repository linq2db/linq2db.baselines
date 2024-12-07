(318425) SELECT 
	t318425.Id = t318424.Id
FROM [DctSetpointtype(318424)] as t318424 (spt)
		LEFT JOIN (
			[VWellTree(318427)] as t318427 (t2)
				INNER JOIN [DctOu(318429)] as t318429 (tp2) ON ({t318427.ShopId?}? = {t318429.Id})
				LEFT JOIN [UacUsersDatagroup(318432)] as t318432 (cudg) ON ({t318429.Id} = {t318432.DatagroupId} AND {t318432.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318437)] as t318437 (oudg) ON ({t318429.ParentId?}? = {t318437.DatagroupId} AND {t318437.UserId} = 150 AND {t318437.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318457)] as t318457 (d) ON ({t318427.WellId?}? = {t318457.WellId})
		)  ON ({t318457.SetpointtypeId} = {t318424.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318432.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318437.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
