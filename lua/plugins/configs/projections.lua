local status_projections_ok, projections = pcall(require, "projections")
if not status_projections_ok then
  return
end

local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end


projections.setup {
  workspaces = {
    "~/projects",
    "~/projects/work/ocp",
  },
  patterns = { ".git" },
}

telescope.load_extension('projections')

