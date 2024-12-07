(185629) SELECT 
	t185629.Id = t185628.Id
FROM [DctSetpointtype(185628)] as t185628 (spt)
		LEFT JOIN (
			[VWellTree(185631)] as t185631 (t2)
				INNER JOIN [DctOu(185633)] as t185633 (tp2) ON ({t185631.ShopId?}? = {t185633.Id})
				LEFT JOIN [UacUsersDatagroup(185636)] as t185636 (cudg) ON ({t185633.Id} = {t185636.DatagroupId} AND {t185636.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(185641)] as t185641 (oudg) ON ({t185633.ParentId?}? = {t185641.DatagroupId} AND {t185641.UserId} = 150 AND {t185641.Inheritablepermission} > 0)
				INNER JOIN [Deviation(185661)] as t185661 (d) ON ({t185631.WellId?}? = {t185661.WellId})
		)  ON ({t185661.SetpointtypeId} = {t185628.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t185636.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t185641.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
