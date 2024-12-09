(491582) SELECT 
	t491582.Id = t491581.Id
FROM [DctSetpointtype(491581)] as t491581 (spt)
		LEFT JOIN (
			[VWellTree(491584)] as t491584 (t2)
				INNER JOIN [DctOu(491586)] as t491586 (tp2) ON ({t491584.ShopId?}? = {t491586.Id})
				LEFT JOIN [UacUsersDatagroup(491589)] as t491589 (cudg) ON ({t491586.Id} = {t491589.DatagroupId} AND {t491589.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491594)] as t491594 (oudg) ON ({t491586.ParentId?}? = {t491594.DatagroupId} AND {t491594.UserId} = 150 AND {t491594.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491614)] as t491614 (d) ON ({t491584.WellId?}? = {t491614.WellId})
		)  ON ({t491614.SetpointtypeId} = {t491581.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491589.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t491594.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
