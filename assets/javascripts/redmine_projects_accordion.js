var accordions = {};
function loadAccordions(ids) {
  var options = {
    classNames: {
      section: 'section',
      title: 'title',
      toggle: 'toggle',
      expanded: 'expanded'      
    }
  };
  for(i=0; i<ids.length; i++) {
    accordions["acc"+ids[i]] = new Accordion("acc"+ids[i], options);
  }
}

