(245423) SELECT 
	t245423.Id = t245422.Id
FROM [DctSetpointtype(245422)] as t245422 (spt)
		LEFT JOIN (
			[VWellTree(245425)] as t245425 (t2)
				INNER JOIN [DctOu(245427)] as t245427 (tp2) ON ({t245425.ShopId?}? = {t245427.Id})
				LEFT JOIN [UacUsersDatagroup(245430)] as t245430 (cudg) ON ({t245427.Id} = {t245430.DatagroupId} AND {t245430.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245435)] as t245435 (oudg) ON ({t245427.ParentId?}? = {t245435.DatagroupId} AND {t245435.UserId} = 150 AND {t245435.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245455)] as t245455 (d) ON ({t245425.WellId?}? = {t245455.WellId})
		)  ON ({t245455.SetpointtypeId} = {t245422.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245430.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245435.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
