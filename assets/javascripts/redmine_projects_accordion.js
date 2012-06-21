function loadAccordions(ids) {
  new Accordion("acc0");
  for(i=0; i<ids.length; i++) {
    new Accordion("acc"+ids[i]);
  }
}

