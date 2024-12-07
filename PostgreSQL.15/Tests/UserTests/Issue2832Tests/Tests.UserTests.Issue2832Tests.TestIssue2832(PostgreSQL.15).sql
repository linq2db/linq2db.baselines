(106485) SELECT 
	t106485.Id = t106484.Id
FROM [DctSetpointtype(106484)] as t106484 (spt)
		LEFT JOIN (
			[VWellTree(106487)] as t106487 (t2)
				INNER JOIN [DctOu(106489)] as t106489 (tp2) ON ({t106487.ShopId?}? = {t106489.Id})
				LEFT JOIN [UacUsersDatagroup(106492)] as t106492 (cudg) ON ({t106489.Id} = {t106492.DatagroupId} AND {t106492.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106497)] as t106497 (oudg) ON ({t106489.ParentId?}? = {t106497.DatagroupId} AND {t106497.UserId} = 150 AND {t106497.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106517)] as t106517 (d) ON ({t106487.WellId?}? = {t106517.WellId})
		)  ON ({t106517.SetpointtypeId} = {t106484.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106492.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106497.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
