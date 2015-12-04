def getAttachmentBasePath():
    return "/var/www/html/ePortageArchive"

def getAttachmentPathFor(test_id,attach_id):
    return "%s/%d/%d" % (getAttachmentBasePath(),test_id,attach_id)
