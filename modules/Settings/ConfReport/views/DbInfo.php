<?php

/**
 * Database info view file.
 *
 * @package   Settings.View
 *
 * @copyright YetiForce S.A.
 * @license   YetiForce Public License 5.0 (licenses/LicenseEN.txt or yetiforce.com)
 * @author    Mariusz Krzaczkowski <m.krzaczkowski@yetiforce.com>
 */

/**
 * Database info view class.
 */
class Settings_ConfReport_DbInfo_View extends \App\Controller\ModalSettings
{
	/** {@inheritdoc} */
	public $modalSize = 'modal-full';

	/** {@inheritdoc} */
	public $showFooter = false;

	/** {@inheritdoc} */
	public $modalIcon = 'fas fa-database';

	/** {@inheritdoc} */
	public function process(App\Request $request)
	{
		$qualifiedModule = $request->getModule(false);
		$viewer = $this->getViewer($request);
		$viewer->assign('DB_INFO', \App\Db::getInstance()->getDbInfo());
		$viewer->assign('DB_RECORDS', \App\Utils::getNumberRecordsByModule());
		$viewer->view('DbInfo.tpl', $qualifiedModule);
	}

	/** {@inheritdoc} */
	public function getPageTitle(App\Request $request)
	{
		return \App\Language::translate('LBL_DB_INFO', $request->getModule(false));
	}
}
