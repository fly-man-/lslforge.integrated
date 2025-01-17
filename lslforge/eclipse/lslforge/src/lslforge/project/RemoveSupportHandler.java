package lslforge.project;

import lslforge.LSLProjectNature;
import lslforge.util.Util;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.ui.handlers.HandlerUtil;

public class RemoveSupportHandler extends AbstractHandler
{

	public Object execute(ExecutionEvent event) throws ExecutionException {
		IProject project = ProjectContributionItem.getSelectedProject();
		if(project != null) {
			try {
				LSLProjectNature.removeProjectNature(project);
				MessageDialog.openInformation(HandlerUtil.getActiveShellChecked(event), Messages.RemoveSupportHandler_removeSupport, Messages.RemoveSupportHandler_removeSupportReply);
			} catch (CoreException e) {
				Util.error(e.getMessage());
				MessageDialog.openInformation(
						HandlerUtil.getActiveShellChecked(event), 
						Messages.RemoveSupportHandler_removeSupport, 
						Messages.RemoveSupportHandler_removeSupportErr + e.getMessage()
				);
			}
		}
		return null;
	}

}
