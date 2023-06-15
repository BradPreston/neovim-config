local setup, stayCentered = pcall(require, "stay-centered")
if not setup then
    return
end

stayCentered.setup()
