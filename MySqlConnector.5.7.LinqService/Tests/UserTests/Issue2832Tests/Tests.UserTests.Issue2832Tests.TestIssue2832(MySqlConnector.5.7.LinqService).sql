(318430) SELECT 
	t318430.Id = t318429.Id
FROM [DctSetpointtype(318429)] as t318429 (spt)
		LEFT JOIN (
			[VWellTree(318432)] as t318432 (t2)
				INNER JOIN [DctOu(318434)] as t318434 (tp2) ON ({t318432.ShopId?}? = {t318434.Id})
				LEFT JOIN [UacUsersDatagroup(318437)] as t318437 (cudg) ON ({t318434.Id} = {t318437.DatagroupId} AND {t318437.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318442)] as t318442 (oudg) ON ({t318434.ParentId?}? = {t318442.DatagroupId} AND {t318442.UserId} = 150 AND {t318442.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318462)] as t318462 (d) ON ({t318432.WellId?}? = {t318462.WellId})
		)  ON ({t318462.SetpointtypeId} = {t318429.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318437.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318442.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
